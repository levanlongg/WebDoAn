using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDoAn.Models;

namespace WebDoAn.Controllers
{
    
    public class QLPhieuNhapController : Controller
    {
        QLBCCEntities2 db = new QLBCCEntities2();
        //public ActionResult QuanLySanPham()
        //{
        //    return View(db.SanPham.Where(n => n.DaXoa == false));
        //}
        // GET: QLPhieuNhap
        [HttpGet]
        public ActionResult NhapHang()
        {
            ViewBag.MaNCC = new SelectList(db.NhaCungCap.OrderBy(n => n.TenNCC), "MaNCC", "TenNCC");
            //ViewBag.MaNCC = db.NhaCungCap;
            ViewBag.ListSanPham = db.SanPham;
            return View();// db.PhieuNhap.Where(n => n.DaXoa == false));
        }
        [HttpPost]
        public ActionResult NhapHang(IEnumerable<ChiTietPhieuNhap> Model)
        {
            return View();
        }
    }
}