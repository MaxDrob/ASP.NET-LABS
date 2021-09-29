<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" %>

<!DOCTYPE html>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Приглашаем на семинар</h1>
        <p></p>
    </div>
    <div>
        <lable>Ваше имя:</lable><asp:TextBox ID="name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Заполните поле &quot;Имя&quot;" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="name" ErrorMessage="ЗАПОЛНИ!">Эй, заполни!</asp:RequiredFieldValidator>
        
    </div>
    <div>
        <lable>Ваше email:</lable><asp:TextBox ID="email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Заполните поле &quot;Email&quot;" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Email имеет не верный формат" Display="Dynamic" ForeColor="Red">
            Адрес введен не верно!!!
        </asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Неправильно!"></asp:RequiredFieldValidator>
       <asp:RegularExpressionValidator runat="server" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="E-mail is not in a valid format" Display="Dynamic" ForeColor="Red">Адрес введен неверно!!!</asp:RegularExpressionValidator>
    </div>
    <div>
        <lable>Ваше телефон:</lable><asp:TextBox ID="phone" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="phone" ErrorMessage="Заполните поле &quot;Телефон&quot;" ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Не то!">Эй, это не номер</asp:RequiredFieldValidator>
    </div>

    <div>
        <lable>Вы будете делать доклад?</lable>
        <asp:CheckBox ID="CheckBoxYN" runat="server" />
    </div>
    <div>
        <button type="submit">Отправить ответ на приглашение RSVP</button>
        <asp:ValidationSummary ID="validationSummary" runat="server" ShowModelStateErrors="true" />
    </div>

</asp:Content>
