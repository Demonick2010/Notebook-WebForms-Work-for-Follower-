<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="ShowContacts.aspx.cs" Inherits="Notebook.ShowContacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <div class="row small-spacing">
        <div class="col-lg-12 col-xs-12">
            <div class="box-content card white">
                <h4 class="box-title">Show all notes<span style="float: right"><a class="btn btn-success btn-sm waves-effect waves-light" href="add_contact.aspx">Add Contact</a></span></h4>
                <br />

                <%--Выводим Таблицу поиска--%>
                <table class="table">
                    <tr>
                        <td><asp:TextBox ID="FirstName" runat="server" class="form-control" placeholder="Enter First Name to search"></asp:TextBox></td>
                        <td><asp:Button ID="SubmitNote" runat="server" Text="Search" style="margin-top: 4px;" class="btn btn-primary btn-sm waves-effect waves-light" OnClick="SubmitNote_Click" /></td>
                    </tr>
                </table>

                <asp:Repeater ID="Repeater" runat="server">

                    <HeaderTemplate>
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>First Name</th>
                                    <th>Second Name</th>
                                    <th>Last Name</th>
                                    <th>Birthday</th>
                                    <th>Phone Number</th>
                                    <th>Email</th>
                                </tr>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tbody>
                            <tr>
                                <td><%#Eval("FirstName") %></td>
                                <td><%#Eval("SecondName") %></td>
                                <td><%#Eval("LastName") %></td>
                                <td><%#Eval("BirthDay", "{0:d.MM.yyyy}") %></td>
                                <td><%#Eval("PhoneNumber") %></td>
                                <td><%#Eval("Email") %></td>
                                <td>
                                    <a href="edit.aspx?id=<%#Eval("Id") %>"><img src="assets/images/edit.png" height="50" width="50" /></a>
                                    <a href="delete.aspx?id=<%#Eval("Id") %>"><img src="assets/images/delete.png" height="50" width="50" /></a>
                                </td>
                            </tr>
                        </tbody>
                    </ItemTemplate>
                    <FooterTemplate>
                        <tfooter>

                        </tfooter>
                        </table>
                    </FooterTemplate>


                </asp:Repeater>

            </div>
        </div>
    </div>

</asp:Content>
