using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebDoAn.Models;
using System.Web.Mvc;
using System.Web.Security;


namespace WebDoAn.Controllers
{
    public class Login1Controller : Controller
    {
        // GET: Login1
        QLBCCEntities2 db = new QLBCCEntities2();
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(string name, string password)
        {

            try
            {
                ThanhVien tv = db.ThanhVien.SingleOrDefault(n => n.TaiKhoan == name && n.MatKhau == password);

                if (tv.TaiKhoan == name && tv.MatKhau == password && tv.MaLoaiTV == 1)
                {
                    return RedirectToAction("DSThanhVien", "ThanhVien");
                }
                if (tv.TaiKhoan == name && tv.MatKhau == password && tv.MaLoaiTV == 2)
                {
                    return RedirectToAction("QuanLySanPham", "QuanLySanPham");
                }
                if (tv.TaiKhoan == name && tv.MatKhau == password && tv.MaLoaiTV == 3)
                {
                    return RedirectToAction("DSKhachhang", "QLKhachHang");
                }
                if (tv.TaiKhoan == name && tv.MatKhau == password && tv.MaLoaiTV != 1)
                {
                    return RedirectToAction("HomeIndex", "Home");
                }
                if (tv.TaiKhoan == name && tv.MatKhau != password)
                {
                    return RedirectToAction("HomeIndex", "Home");
                }
                if (tv.TaiKhoan != name && tv.MatKhau == password)
                {
                    return RedirectToAction("HomeIndex", "Home");
                }

                if (tv.TaiKhoan != name && tv.MatKhau != password)
                {
                    return RedirectToAction("HomeIndex", "Home");
                }
            }
            catch
            {
                
            }
            return View();
        }
        ///dang xuat
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("HomeIndex");
        }
    }
}
