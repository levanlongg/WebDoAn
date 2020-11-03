using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDoAn.Models;
using System.Net;
using System.IO;

namespace WebDoAn.Controllers
{
    public class QLLoaiSanPhamController : Controller
    {
        // GET: QLLoaiSanPham
        QLBCCEntities2 db = new QLBCCEntities2();
        public ActionResult DSLoaiSanPham()
        {
            return View(db.LoaiSanPham.Where(n => n.MaLoaiSP == n.MaLoaiSP));
        }
        [HttpGet]
        public ActionResult ThemMoi()
        {
            return View();
        }
        [HttpPost]
        public ActionResult ThemMoi(LoaiSanPham lsp)
        {
            if (ModelState.IsValid)
            {
                db.LoaiSanPham.Add(lsp);
                db.SaveChanges();
            }
            return RedirectToAction("DSLoaiSanPham");
        }

        //phuong thuc xem chi tiết loai sản phẩm duyệt theo mã
        public ActionResult XemLSP(int? id)
        {
            return View(db.LoaiSanPham.Find(id));
        }

        //phuong thuc sưa san pham lấy theo mã sản phẩm
        [HttpGet]
        public ActionResult SuaLSP(int? id)
        {
            return View("SuaLSP", db.LoaiSanPham.Find(id));
        }
        [HttpPost]
        public ActionResult SuaLSP(LoaiSanPham ssp)
        {
           if(ModelState.IsValid)
            {
                db.Entry(ssp).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("DSLoaiSanPham");
            }
            return View("SuaLSP",ssp);
        }

        //phuong thuc xoa
        [HttpGet]
        public ActionResult XoaLSP(int? id)
        {
            return View( db.LoaiSanPham.Find(id));
        }

        [HttpPost, ActionName("XoaLSP")]
        public ActionResult XoaLSP(int id)
        {
            LoaiSanPham xsp = db.LoaiSanPham.Find(id);
            db.LoaiSanPham.Remove(xsp);
            db.SaveChanges();
            return RedirectToAction("DSLoaiSanPham");
        }

    }
}