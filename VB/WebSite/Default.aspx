<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxMenu" TagPrefix="dxm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            Try clicking menu items.</p>
        <p>
            Note: Clicking a parent item (an item that has sub-items) does not fire the menu
            server-side ItemClick event.</p>
        <dxm:ASPxMenu ID="ASPxMenu1" runat="server" BorderBetweenItemAndSubMenu="HideAll"
            OnItemClick="ASPxMenu1_ItemClick" SelectParentItem="True" ShowPopOutImages="True">
            <Items>
                <dxm:MenuItem Text="Root 1">
                    <Items>
                        <dxm:MenuItem Text="Sub Item">
                            <Items>
                                <dxm:MenuItem Text="Item 1-1">
                                </dxm:MenuItem>
                                <dxm:MenuItem Text="Item 1-2">
                                </dxm:MenuItem>
                            </Items>
                        </dxm:MenuItem>
                        <dxm:MenuItem Text="Item 1-3">
                        </dxm:MenuItem>
                    </Items>
                </dxm:MenuItem>
                <dxm:MenuItem Text="Root 2">
                    <Items>
                        <dxm:MenuItem Text="Item 2-1">
                        </dxm:MenuItem>
                        <dxm:MenuItem Text="Item 2-2">
                        </dxm:MenuItem>
                        <dxm:MenuItem Text="Item 2-3">
                        </dxm:MenuItem>
                    </Items>
                </dxm:MenuItem>
            </Items>
            <ClientSideEvents ItemClick="function(s, e) {
	e.processOnServer = e.item.GetItemCount() == 0; // Prevent generating a postback for parent menu items
           }" />
        </dxm:ASPxMenu>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
