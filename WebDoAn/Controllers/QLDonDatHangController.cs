using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDoAn.Models;
using System.Net;

namespace WebDoAn.Controllers
{
    public class QLDonDatHangController : Controller
    {
        // GET: QLDonDatHang
        QLBCCEntities2 db = new QLBCCEntities2();
        public ActionResult DSDonDatHang()
        {
            return View(db.DonDatHang.Where(n => n.MaDDH == n.MaDDH));
        }

        public ActionResult XemDDH(int? id)
        {
            return View(db.DonDatHang.Find(id));
        }

        [HttpGet]
        public ActionResult XoaDDH(int? id)
        {
            return View(db.DonDatHang.Find(id));
        }

        [HttpPost, ActionName("XoaDDH")]
        public ActionResult XoaDDH(int id)
        {
            DonDatHang ddh = db.DonDatHang.Find(id);
            db.DonDatHang.Remove(ddh);
            db.SaveChanges();
            return RedirectToAction("DSDonDatHang");
        }
    }
}