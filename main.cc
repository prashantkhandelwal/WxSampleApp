#include "main.h"
#include "windowApp.h"

IMPLEMENT_APP(testApp)

bool testApp::OnInit()
{
	windowApp *wnd = new windowApp(wxT("Simple"));
	wnd->Show(true);
	
	return true;
}
