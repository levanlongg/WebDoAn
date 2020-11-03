using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using WebDoAn.Models;
using System.Net;

namespace WebDoAn.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        QLBCCEntities2 db = new QLBCCEntities2();
      
        public ActionResult HomeIndex()
        {
            //
            var CayCanhMini = db.SanPham.Where(n => n.MaLoaiSP == 1 && n.DaXoa == false);
            ViewBag.ListCCMN = CayCanhMini;
            //
            var SenDa = db.SanPham.Where(n => n.MaLoaiSP == 2 && n.DaXoa == false);
            ViewBag.ListSD = SenDa;
            //
            var TieuCanh = db.SanPham.Where(n => n.MaLoaiSP == 3 && n.DaXoa == false);
            ViewBag.ListTC = TieuCanh;
            return View();
        }
        public ActionResult HomeDSSP()
        {
            //
            var CayCanhMini = db.SanPham.Where(n => n.MaLoaiSP == 1 && n.DaXoa == false);
            ViewBag.ListCCMN = CayCanhMini;
            //
            var SenDa = db.SanPham.Where(n => n.MaLoaiSP == 2 && n.DaXoa == false);
            ViewBag.ListSD = SenDa;
            //
            var TieuCanh = db.SanPham.Where(n => n.MaLoaiSP == 3 && n.DaXoa == false);
            ViewBag.ListTC = TieuCanh;
            return View();
        }
        public ActionResult MenuPatial()
        {
            var listCCMN = db.SanPham;
            return View(listCCMN);

        }
        //[HttpGet]
        public ActionResult ThemGioHang()
        {
            return View();
        }
        public ActionResult XemGioHang()
        {
            return View();
        }
        public ActionResult XoaGioHang()
        {
            return View();
        }
        [HttpGet]
        public ActionResult DangKy()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangKy(ThanhVien tv, FormCollection f)
        {
            db.ThanhVien.Add(tv);
            db.SaveChanges();
            return View();
        }
       // [HttpGet]
        //public ActionResult DangKy1()
        //{
        //    return View();
        //}
        public ActionResult HeadertopPartial()
        {
            return PartialView();
        }
        public ActionResult Ad_headertop_Patial()
        {
            return PartialView();
        }
        public ActionResult AdminSanPham()
        {
            return View();
        }
        //Phân quyền
        //Phuong thuc xử lý đăng nhập
        //[HttpPost]
        //public ActionResult DangNhap(string txtTaiKhoan, string txtMatKhau)
        //{
           
        //    ThanhVien tv = db.ThanhVien.SingleOrDefault(n => n.TaiKhoan == txtTaiKhoan && n.MatKhau == txtMatKhau);
        //    if (tv != null)
        //    {
        //        IEnumerable<LoaiThanhVien_Quyen> listQuyen = db.LoaiThanhVien_Quyen.Where(n => n.MaLoaiTV == tv.MaLoaiTV);
        //        string Quyen = "";
        //        foreach (var item in listQuyen)
        //        {
        //            Quyen += item.Quyen.TenQuyen + "";
        //        }
        //        Quyen = Quyen.Substring(0, Quyen.Length - 1);
        //        PhanQuyen(tv.TaiKhoan.ToString(), Quyen);
        //        return RedirectToAction("HomeIndex","Home");
        //    }
        //    return View();
        //}
        ////phuong thuc phan quyen
        //public void PhanQuyen(string TaiKhoan, string Quyen)
        //{

        //    FormsAuthentication.Initialize();
        //    var ticket = new FormsAuthenticationTicket(1, TaiKhoan, DateTime.Now, DateTime.Now.AddHours(3), false, Quyen, FormsAuthentication.FormsCookiePath);
        //    var cookie = new HttpCookie(FormsAuthentication.FormsCookieName, FormsAuthentication.Encrypt(ticket));
        //    if (ticket.IsPersistent) cookie.Expires = ticket.Expiration;
        //    Response.Cookies.Add(cookie);

        //}
        ////dang xuat
        //public ActionResult DangXuat()
        //{
        //    FormsAuthentication.SignOut();
        //    return RedirectToAction("HomeIndex");
        //}
    }
}