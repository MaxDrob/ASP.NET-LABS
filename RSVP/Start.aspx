<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="Start" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="rek">
            <h1>Приглашение на семинар<asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </h1>
            <p>Вы приглашены на семинар</p>
            <p>Подтвердите свое согласие, пройдя регистрацию</p>
        </div>
        <div class="info">
            Семинар состоится 1 января 2022 года в 7.30
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <asp:Timer runat="server" Interval="1000"></asp:Timer>

                <ContentTemplate>
                   <%

                    DateTime dataseminar = new DateTime(2018,1,1,7,30,0); 
                    DateTime dnow = DateTime.Now; int rd = (dataseminar - dnow).Days; 
                    int rm = (dataseminar - dnow).Minutes;
                    int rsec = (dataseminar - dnow).Seconds;
                   %> 
                 <h3>До семинара осталось <%=rd.ToString()%> дн., <%=rm.ToString()%> мин. и <%=rsec.ToString()%> с.</h3>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
