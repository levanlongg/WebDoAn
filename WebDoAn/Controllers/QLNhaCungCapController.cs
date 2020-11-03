using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDoAn.Models;
using System.Net;

namespace WebDoAn.Controllers
{
    public class QLNhaCungCapController : Controller
    {
        // GET: QLNhaCungCap
        QLBCCEntities2 db = new QLBCCEntities2();
        public ActionResult DSNhaCungCap()
        {
            return View(db.NhaCungCap.Where(n => n.MaNCC == n.MaNCC));
        }
        //thêm nhà cung cấp
        [HttpGet]
        public ActionResult ThemMoi()
        {
            return View();
        }
        [HttpPost]
        public ActionResult ThemMoi(NhaCungCap ncc)
        {
            if (ModelState.IsValid)
            {
                db.NhaCungCap.Add(ncc);
                db.SaveChanges();
            }
            return RedirectToAction("DSNhaCungCap");
        }

        //phuong thuc xem chi tiết loai sản phẩm duyệt theo mã
        public ActionResult XemNCC(int? id)
        {
            return View(db.NhaCungCap.Find(id));
        }

        //phuong thuc sưa san pham lấy theo mã sản phẩm
        [HttpGet]
        public ActionResult SuaNCC(int? id)
        {
            return View("SuaNCC", db.NhaCungCap.Find(id));
        }
        [HttpPost]
        public ActionResult SuaNCC(NhaCungCap ncc)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ncc).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("DSNhaCungCap");
            }
            return View("SuaNCC", ncc);
        }

        //phuong thuc xoa
        [HttpGet]
        public ActionResult XoaNCC(int? id)
        {
            return View(db.NhaCungCap.Find(id));
        }

        [HttpPost, ActionName("XoaNCC")]
        public ActionResult XoaNCC(int id)
        {
            NhaCungCap xncc = db.NhaCungCap.Find(id);
            db.NhaCungCap.Remove(xncc);
            db.SaveChanges();
            return RedirectToAction("DSNhaCungCap");
        }
    }
}