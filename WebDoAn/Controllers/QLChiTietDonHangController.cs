using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDoAn.Models;

namespace WebDoAn.Controllers
{
    public class QLChiTietDonHangController : Controller
    {
        // GET: QLChiTietDonHang
        QLBCCEntities2 db = new QLBCCEntities2();
        public ActionResult DSCTDonHang()
        {
            return View(db.ChiTietDonDatHang.Where(n => n.MaChiTietDDH == n.MaChiTietDDH));
        }
        public ActionResult XemCTDH(int? id)
        {
            return View(db.ChiTietDonDatHang.Find(id));
        }
        [HttpGet]
        public ActionResult XoaCTDDH(int? id)
        {
            return View(db.ChiTietDonDatHang.Find(id));
        }

        [HttpPost, ActionName("XoaCTDDH")]
        public ActionResult XoaCTDDH(int id)
        {
            ChiTietDonDatHang ctddh = db.ChiTietDonDatHang.Find(id);
            db.ChiTietDonDatHang.Remove(ctddh);
            db.SaveChanges();
            return RedirectToAction("DSCTDonHang");
        }

    }
}