using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDoAn.Models;
using System.Net;

namespace WebDoAn.Controllers
{
    public class SanPhamController : Controller
    {
        // GET: SanPham
        QLBCCEntities2 db = new QLBCCEntities2();
        [ChildActionOnly]
        public ActionResult SanPhamStyle1Patial()
        {
            return PartialView();
        }
        [ChildActionOnly]
        public ActionResult SanPhamStyle2Patial()
        {
            return PartialView();
        }
        [ChildActionOnly]
        public ActionResult DSSPham(int? MaSP, int? MaLoaiSP)
        {

            var listSP = db.SanPham.Where(n => n.MaSP == MaSP && n.MaLoaiSP == MaLoaiSP);
            if (MaLoaiSP == null && MaLoaiSP == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            if (listSP.Count() == 0)
            {
                return HttpNotFound();
            }
            return PartialView(listSP);
        }
        public ActionResult Xemchitiet(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sp = db.SanPham.SingleOrDefault(n => n.MaSP == id && n.DaXoa == false);
            if (sp == null)
            {
                return HttpNotFound();
            }
            return View(sp);
        }

        //public ActionResult DSSanPham(int? MaNSX, int? MaLoaiSP)
        //{
        //    var listSP = db.SanPham.Where(n => n.MaNSX == MaNSX && n.MaLoaiSP == MaLoaiSP);
        //    if (MaLoaiSP == null && MaNSX == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    if (listSP.Count() == 0)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(listSP);
        //}

    }
}