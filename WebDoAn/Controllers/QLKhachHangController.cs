using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDoAn.Models;
using System.Net;

namespace WebDoAn.Controllers
{
    public class QLKhachHangController : Controller
    {
        // GET: QLKhachHang
        QLBCCEntities2 db = new QLBCCEntities2();
        public ActionResult DSKhachhang()
        {
            return View(db.KhachHang.Where(n => n.MaKH == n.MaKH));
        }
        //[HttpGet]
        //public ActionResult ThemMoi()
        //{
        //    return View();
        //}
        //[HttpPost]
        //public ActionResult ThemMoi(KhachHang kh)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.KhachHang.Add(kh);
        //        db.SaveChanges();
        //    }
        //    return RedirectToAction("DSKhachHang");
        //}

        //phuong thuc xem chi tiết khach hang duyệt theo mã
        public ActionResult XemKH(int? id)
        {
            return View(db.KhachHang.Find(id));
        }

        //phuong thuc sưa san pham lấy theo mã sản phẩm
        //[HttpGet]
        //public ActionResult SuaKH(int? id)
        //{
        //    return View("SuaKH", db.KhachHang.Find(id));
        //}
        //[HttpPost]
        //public ActionResult SuaKH(KhachHang kh)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.Entry(kh).State = System.Data.Entity.EntityState.Modified;
        //        db.SaveChanges();
        //        return RedirectToAction("DSKhachHang");
        //    }
        //    return View("SuaKH", kh);
        //}

        //phuong thuc xoa
        [HttpGet]
        public ActionResult XoaKH(int? id)
        {
            return View(db.KhachHang.Find(id));
        }

        [HttpPost, ActionName("XoaKH")]
        public ActionResult XoaKH(int id)
        {
            KhachHang kh = db.KhachHang.Find(id);
            db.KhachHang.Remove(kh);
            db.SaveChanges();
            return RedirectToAction("DSKhachHang");
        }
    }
}