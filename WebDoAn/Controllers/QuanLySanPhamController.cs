using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDoAn.Models;
using System.Net;
using System.Data.Entity;
using System.IO;

namespace WebDoAn.Controllers
{
    public class QuanLySanPhamController : Controller
    {
        // GET: QuanLySanPham
        QLBCCEntities2 db = new QLBCCEntities2();
        public ActionResult QuanLySanPham()
        {
            return View(db.SanPham.Where(n => n.DaXoa == false));
        }
        //Thêm sản phẩm vào csdl
        [HttpGet]
        public ActionResult ThemMoi1()
        {
            ViewBag.MaNCC = new SelectList(db.NhaCungCap.OrderBy(n => n.TenNCC), "MaNCC", "TenNCC");
            ViewBag.MaNSX = new SelectList(db.NhaSanXuat.OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemMoi1(SanPham sp, HttpPostedFileBase HinhAnh)
        {

            if (ModelState.IsValid)
            {
                if (HinhAnh != null)
                {
                    var fileName = Path.GetFileName(HinhAnh.FileName);
                    var path = Path.Combine(Server.MapPath("~/Content/HinhAnhSP"), fileName);
                    if (System.IO.File.Exists(path))
                    {
                        ViewBag.upload = "Hình ảnh đã tồn tại";
                        return View();
                    }
                    else
                    {
                        HinhAnh.SaveAs(path);
                        sp.HinhAnh = fileName;
                    }
                }
                db.SanPham.Add(sp);
                db.SaveChanges();
            }
            return RedirectToAction("QuanLySanPham");
        }

        //phuong thuc xem chi tiết sản phẩm duyệt theo mã
        public ActionResult XemSP(int? id)
        {
            ViewBag.MaNCC = new SelectList(db.NhaCungCap.OrderBy(n => n.TenNCC), "MaNCC", "TenNCC");
            ViewBag.MaNSX = new SelectList(db.NhaSanXuat.OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sp = db.SanPham.SingleOrDefault(n => n.MaSP == id && n.DaXoa == false);
            if (sp == null)
            {
                return HttpNotFound();
            }
            return View(sp);
        }

        //phuong thuc sưa san pham lấy theo mã sản phẩm
        [HttpGet]
        public ActionResult SuaSP(int? id)
        {
            ViewBag.MaNCC = new SelectList(db.NhaCungCap.OrderBy(n => n.TenNCC), "MaNCC", "TenNCC");
            ViewBag.MaNSX = new SelectList(db.NhaSanXuat.OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham ssp = db.SanPham.SingleOrDefault(n => n.MaSP == id && n.DaXoa == false);
            if (ssp == null)
            {
                return HttpNotFound();
            }
            return View(ssp);
        }
        [HttpPost]
        public ActionResult SuaSP(SanPham ssp)
        {
            ViewBag.MaNCC = new SelectList(db.NhaCungCap.OrderBy(n => n.TenNCC), "MaNCC", "TenNCC");
            ViewBag.MaNSX = new SelectList(db.NhaSanXuat.OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");
            try
            {
                SanPham sp = db.SanPham.SingleOrDefault(n => n.MaSP == ssp.MaSP && n.DaXoa == false);
                sp.TenSP = ssp.TenSP;
                sp.DonGia = ssp.DonGia;
                sp.MoTa = ssp.MoTa;
                sp.MoTaCT = ssp.MoTaCT;
                sp.DacDiem = ssp.DacDiem;
                sp.HinhAnh = ssp.HinhAnh;
                sp.SoLuongTon = ssp.SoLuongTon;
                sp.LuotXem = ssp.LuotXem;
                sp.LuotBinhChon = ssp.LuotBinhChon;
                sp.Luot_BinhLuan = ssp.Luot_BinhLuan;
                sp.SoLanMua = ssp.SoLanMua;
                sp.Moi = ssp.Moi;
                sp.MaNCC = ssp.MaNCC;
                sp.MaNSX = ssp.MaNSX;
                sp.MaLoaiSP = ssp.MaLoaiSP;
                sp.DaXoa = ssp.DaXoa;
                db.SaveChanges();
                return RedirectToAction("QuanLySanPham");
            }
            catch
            {
                return View();
            }
        }

        //phuong thuc xoa
        // GET: /Movies/Delete/5
        public ActionResult XoaSP(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham movie = db.SanPham.Find(id);
            if (movie == null)
            {
                return HttpNotFound();
            }
            return View(movie);
        }

        // POST: /Movies/Delete/5
        [HttpPost, ActionName("XoaSP")]
        [ValidateAntiForgeryToken]
        public ActionResult XoaSP(int id)
        {
            SanPham sp = db.SanPham.Find(id);
            db.SanPham.Remove(sp);
            db.SaveChanges();
            return RedirectToAction("QuanLySanPham");
        }

    }
}
