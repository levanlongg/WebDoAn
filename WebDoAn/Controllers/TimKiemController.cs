using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDoAn.Models;

namespace WebDoAn.Controllers
{
    public class TimKiemController : Controller
    {
        QLBCCEntities2 db = new QLBCCEntities2();
        // GET: TimKiem
        //tim kiem san pham trang chu theo ten
        public ActionResult KQTimKiem_Client(string searchString)
        {
            var searchspcl = from m in db.SanPham select m;
            if (!String.IsNullOrEmpty(searchString))
            {
                searchspcl = searchspcl.Where(s => s.TenSP.Contains(searchString));
            }
            return View(searchspcl);
        }
        //tim kem sp theo ten
        public ActionResult KQTimKiem_SP_Admin(string tkTen)
        {
            var searchtkTen = from m in db.SanPham select m;
            if (!String.IsNullOrEmpty(tkTen))
            {
                searchtkTen = searchtkTen.Where(s => s.TenSP.Contains(tkTen));

            }
            return View(searchtkTen);
        }
        //tim kiem loai san pham theo ten
        public ActionResult KQTimKiem_LSP_Admin(string tkTenlsp)
        {
            var searchtkTenlsp = from m in db.LoaiSanPham select m;
            if (!String.IsNullOrEmpty(tkTenlsp))
            {
                searchtkTenlsp = searchtkTenlsp.Where(s => s.TenLoai.Contains(tkTenlsp));

            }
            return View(searchtkTenlsp);
        }
        //tim kiem nha cung cap theo ten
        public ActionResult KQTimKiem_NCC_Admin(string tkTenncc)
        {
            var searchtkTenncc = from m in db.NhaCungCap select m;
            if (!String.IsNullOrEmpty(tkTenncc))
            {
                searchtkTenncc = searchtkTenncc.Where(s => s.TenNCC.Contains(tkTenncc));

            }
            return View(searchtkTenncc);
        }
        //tim kiem nha san xuat theo ten
        public ActionResult KQTimKiem_NSX_Admin(string tkTennsx)
        {
            var searchtkTennsx = from m in db.NhaSanXuat select m;
            if (!String.IsNullOrEmpty(tkTennsx))
            {
                searchtkTennsx = searchtkTennsx.Where(s => s.TenNSX.Contains(tkTennsx));

            }
            return View(searchtkTennsx);
        }
       
    }
}