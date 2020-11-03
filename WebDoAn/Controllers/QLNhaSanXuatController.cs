using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDoAn.Models;
using System.Net;

namespace WebDoAn.Controllers
{
    public class QLNhaSanXuatController : Controller
    {
        // GET: QLNhaSanXuat
        QLBCCEntities2 db = new QLBCCEntities2();
        public ActionResult DSNhaSanXuat()
        {
            return View(db.NhaSanXuat.Where(n => n.MaNSX == n.MaNSX));
        }
        [HttpGet]
        public ActionResult ThemMoi()
        {
            return View();
        }
        [HttpPost]
        public ActionResult ThemMoi(NhaSanXuat nsx)
        {
            if (ModelState.IsValid)
            {
                db.NhaSanXuat.Add(nsx);
                db.SaveChanges();
            }
            return RedirectToAction("DSNhaSanXuat");
        }

        //phuong thuc xem chi tiết loai sản phẩm duyệt theo mã
        public ActionResult XemNSX(int? id)
        {
            return View(db.NhaSanXuat.Find(id));
        }

        //phuong thuc sưa san pham lấy theo mã sản phẩm
        [HttpGet]
        public ActionResult SuaNSX(int? id)
        {
            return View("SuaNSX", db.NhaSanXuat.Find(id));
        }
        [HttpPost]
        public ActionResult SuaNSX(NhaSanXuat nsx)
        {
            if (ModelState.IsValid)
            {
                db.Entry(nsx).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("DSNhaSanXuat");
            }
            return View("SuaNSX", nsx);
        }

        //phuong thuc xoa
        [HttpGet]
        public ActionResult XoaNSX(int? id)
        {
            return View(db.NhaSanXuat.Find(id));
        }

        [HttpPost, ActionName("XoaNSX")]
        public ActionResult XoaNSX(int id)
        {
            NhaSanXuat xncc = db.NhaSanXuat.Find(id);
            db.NhaSanXuat.Remove(xncc);
            db.SaveChanges();
            return RedirectToAction("DSNhaSanXuat");
        }
    }
}