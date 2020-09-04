<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="Notebook.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

     <div class="row small-spacing">
        <div class="col-lg-12 col-xs-12">
            <div class="box-content card white">
                <h4 class="box-title">Edit Note</h4>

                <div class="card-content">
                    <form>

                        <div class="form-group">
                            <label for="FirstName">First Name</label>
                            <asp:TextBox ID="FirstName" runat="server" class="form-control" placeholder="Enter your First Name"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="SecondName">Second Name</label>
                            <asp:TextBox ID="SecondName" runat="server" class="form-control" placeholder="Enter your Second Name"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="LastName">Last Name</label>
                            <asp:TextBox ID="LastName" runat="server" class="form-control" placeholder="Enter your Last Name"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="Birthday">Birthday</label>
                            <asp:TextBox ID="Birthday" runat="server" TextMode="Date" class="form-control" placeholder="Enter your Birthday"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="PhoneNumber">Phone Number</label>
                            <asp:TextBox ID="PhoneNumber" runat="server" class="form-control" placeholder="Enter your phone number"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="Email">Email</label>
                            <asp:TextBox ID="Email" runat="server" class="form-control" placeholder="Enter your email"></asp:TextBox>
                        </div>

                        <asp:Button ID="SubmitNote" runat="server" Text="Edit" class="btn btn-primary btn-sm waves-effect waves-light" OnClick="SubmitNote_Click" />

                    </form>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
