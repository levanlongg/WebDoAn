using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDoAn.Models;


namespace WebDoAn.Controllers
{
    public class ThanhVienController : Controller
    {
        // GET: ThanhVien
        QLBCCEntities2 db = new QLBCCEntities2();
        public ActionResult DSThanhVien()
        {
            return View(db.ThanhVien.Where(n => n.MaThanhVien == n.MaThanhVien));
        }
        public ActionResult XemTV(int? id)
        {
            return View(db.ThanhVien.Find(id));
        }
        [HttpGet]
        public ActionResult XoaTV(int? id)
        {
            return View(db.ThanhVien.Find(id));
        }

        [HttpPost, ActionName("XoaTV")]
        public ActionResult XoaTV(int id)
        {
            ThanhVien tv = db.ThanhVien.Find(id);
            db.ThanhVien.Remove(tv);
            db.SaveChanges();
            return RedirectToAction("DSThanhVien");
        }
    }
}