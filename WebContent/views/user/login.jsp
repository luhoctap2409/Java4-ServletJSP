<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- Start form -->
    <div class="banner">
        <div class="container form-login shadow p-3 mb-5 bg-white rounded">
            <h3>ĐĂNG <em>NHẬP</em></h3>
            <form action="${url}/luntpc04659_Assignment/user/login" method="post">
                <div class="form-group">
                    <label class="font-weight-bold" for="inpAccount">Tài Khoản</label>
                    <input name="UserId" type="text" class="form-control" id="inpAccount" required placeholder="">
                    <%-- <small id="usernameHelp" class="form-text text-danger">${errorUsername}</small> --%>
                </div>
                <div class="form-group">
                    <label class="font-weight-bold" for="inpPassword">Mật Khẩu</label>
                    <input name="Password" type="password" class="form-control" id="inpPassword" required placeholder="">
                	
                </div>
                <div class="form-group form-check">
                    <input name="Remember" type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Nhớ tài khoản?</label>
                </div>
                <small class="form-text text-danger">${error}</small>
                <button type="submit" class="btn btn-primary">Đăng Nhập</button>
                
                <p>Bạn chưa có tài khoản? <a class="noAccount" href="/luntpc04659_Assignment/admin/register">Đăng ký</a></p>
                <p><a href="/luntpc04659_Assignment/admin/forgot-password">Quên mật khẩu?</a></p>
            </form>
        </div>
    </div>
    <!-- End form -->