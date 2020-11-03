using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDoAn.Models;

namespace WebDoAn.Controllers
{
    public class GioHangController : Controller
    {
        QLBCCEntities2 db = new QLBCCEntities2();
        //Phuong thuc lay gio hang
        public List<ItemGioHang> LayGioHang()
        {
            List<ItemGioHang> listGioHang = Session["GioHang"] as List<ItemGioHang>;
            if (listGioHang == null)
            {
                listGioHang = new List<ItemGioHang>();
                Session["GioHang"] = listGioHang;
            }
            return listGioHang;
        }
      
        
        //Them gio hang thong thuong co load lai trang
        [HttpGet]
        public ActionResult ThemGioHang(int? MaSP, string strURL)
        {
            SanPham sp = db.SanPham.SingleOrDefault(n => n.MaSP == MaSP);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            List<ItemGioHang> listGioHang = LayGioHang();
            ItemGioHang spCheck = listGioHang.SingleOrDefault(n => n.MaSP == MaSP);
            if (spCheck != null)
            {
                spCheck.SoLuong++;
                if (sp.SoLuongTon < spCheck.SoLuong)
                {
                    spCheck.SoLuong--;
                    return View("ThongBao");
                }
                spCheck.ThanhTien = spCheck.SoLuong * spCheck.DonGia;
                return Redirect(strURL);
            }
            ItemGioHang itemGH = new ItemGioHang();
            if (sp.SoLuongTon < itemGH.SoLuong)
            {
                //ViewBag.Show("Sản phẩm đã bán.");
                return View("ThongBao");
            }
            else
            {
                itemGH.MaSP = sp.MaSP;
                itemGH.TenSP = sp.TenSP;
                itemGH.SoLuong = 1;
                itemGH.DonGia = sp.DonGia;
                itemGH.ThanhTien = sp.DonGia * 1;
                itemGH.HinhAnh = sp.HinhAnh;
            }
            listGioHang.Add(itemGH);
            Session["GioHang"] = listGioHang;
            return Redirect(strURL);
        }
        
        
        //phuong thuc tinh tong so luong
        public double TinhTongSoLuong()
        {
            List<ItemGioHang> listGioHang = Session["GioHang"] as List<ItemGioHang>;
            if (listGioHang == null)
            {
                return 0;
            }
            return listGioHang.Sum(n => n.SoLuong);
        }


        //Phuong thuc tinh tong tien
        public decimal? TinhTongTien()
        {
            List<ItemGioHang> listGioHang = Session["GioHang"] as List<ItemGioHang>;
            if (listGioHang == null)
            {
                return 0;
            }
            return listGioHang.Sum(n => n.ThanhTien);
        }


        public ActionResult GioHangPartial()
        {
            if (TinhTongSoLuong() == 0)
            {
                ViewBag.TongSoLuong = 0;
                ViewBag.TongTien = 0;
                return PartialView();
            }
            ViewBag.TongSoLuong = TinhTongSoLuong();
            ViewBag.TongTien = TinhTongTien();
            return PartialView();
        }
       
        
        //phuong thuc xem gio hang
        public ActionResult XemGioHang()
        {
            return View();
        }


        ////phung thuc chinh sua gio hang
        //[HttpGet]
        //public ActionResult SuaGioHang(int MaSP)
        //{
        //    //kiem tra session gio hang ton tai chua
        //    if (Session["GioHang"] == null)
        //    {
        //        return RedirectToAction("HomeIndex", "Home");
        //    }
        //    //kiem tra san pham co ton tai trong csdl khong
        //    SanPham sp = db.SanPham.SingleOrDefault(n => n.MaSP == MaSP);
        //    if (sp == null)
        //    {
        //        //trang duong dan khong hop le
        //        Response.StatusCode = 404;
        //        return null;
        //    }
        //    //lay list gio hang tu session
        //    List<ItemGioHang> listGioHang = LayGioHang();
        //    // kiem tra san pham do co ton tai trong gio hang hay khong
        //    ItemGioHang spCheck = listGioHang.SingleOrDefault(n => n.MaSP == MaSP);
        //    if (spCheck == null)
        //    {
        //        return RedirectToAction("HomeIndex", "Home");
        //    }
        //    //lay list gio hang tao giao dien
        //    ViewBag.GioHang = listGioHang;
        //    //neu san pham ton tai roi
        //    return View(spCheck);
        //}


        ////phuong thuc cap nhat gio hang
        [HttpPost]
        public ActionResult CapNhatGioHang(ItemGioHang itemGH)
        {
            //kiem tra so luong ton
            SanPham spCheck = db.SanPham.Single(n => n.MaSP == itemGH.MaSP);
            if (spCheck.SoLuongTon < itemGH.SoLuong)
            {
                return View("ThongBao");
            }
            List<ItemGioHang> listGH = LayGioHang();
            ItemGioHang ItemGHupdate = listGH.Find(n => n.MaSP == itemGH.MaSP);
            ItemGHupdate.SoLuong = itemGH.SoLuong;
            ItemGHupdate.ThanhTien = ItemGHupdate.SoLuong * ItemGHupdate.DonGia;
            return RedirectToAction("XemGioHang");
        }


        public ActionResult XoaGioHang(int MaSP)
        {
           
            List<ItemGioHang> listGioHang = Session["GioHang"] as List<ItemGioHang>;
            ItemGioHang spCheck = listGioHang.FirstOrDefault(m => m.MaSP == MaSP);
            if (spCheck != null)
            {
                listGioHang.Remove(spCheck);
            }
            return Json(new { success = true, ms = "Xóa sản phẩm thành công" }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult DatHang(string tenkh, string email, string sodienthoai, string diachi)
        {
            KhachHang kh = new KhachHang();
            {
                kh.TenKH = tenkh;
                kh.Email = email;
                kh.SoDienThoai = sodienthoai;
                kh.DiaChi = diachi;
                db.KhachHang.Add(kh);
                db.SaveChanges();
            }
            if (Session["GioHang"]==null)
            {
                return RedirectToAction("HomeDSSP", "Home");
            }
            DonDatHang ddh = new DonDatHang();
            ddh.NgayDat = DateTime.Now;
            ddh.NgayGiao = DateTime.Now.AddDays(3);
            ddh.MaKH = kh.MaKH;
            ddh.TinhTrangGiaoHang = false;
            ddh.DaThanhToan = false;
            ddh.UuDai=0;
            db.DonDatHang.Add(ddh);
            db.SaveChanges();
            List <ItemGioHang> listGH= LayGioHang();
            foreach(var item in listGH)
            {
                ChiTietDonDatHang ctdh = new ChiTietDonDatHang();
                ctdh.MaDDH = ddh.MaDDH;
                ctdh.MaSP = item.MaSP;
                ctdh.TenSP = item.TenSP;
                ctdh.SoLuong = item.SoLuong;
                ctdh.DonGia = item.DonGia;
                db.ChiTietDonDatHang.Add(ctdh);
            }
            db.SaveChanges();
            Session["GioHang"] = null;
            return RedirectToAction("XemGioHang");
        }
    }
}