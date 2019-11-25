using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace XML_Individual_Assignment.Pages
{
    public class AutoCompleteModel : PageModel
    {
        [BindProperty]
        private string Term { get; set; }
        private IList<string> Names = new List<string>();

        public JsonResult OnGet()
        {
            Term = HttpContext.Request.Query["term"];

            AddPlayers("Mumbai");
            AddPlayers("Bangalore");
            AddPlayers("Chennai");
            AddPlayers("Hyderabad");
            AddPlayers("Delhi");
            return new JsonResult(Names);
        }

        private void AddPlayers(string Name)
        {
            if (Name.Contains(Term))
            {
                Names.Add(Name);
            }

        }

    }
}