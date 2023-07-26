<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Start form -->
    <div class="banner">
        <div class="container form-login shadow p-3 mb-5 bg-white rounded">
            <h3>ĐỔI <em >MẬT KHẨU</em></h3>
            <form>
                <div class="form-group">
                    <label class="font-weight-bold" for="inpAccount">Tài Khoản</label>
                    <input type="text" class="form-control" id="inpAccount" aria-describedby="emailHelp"
                        placeholder="">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone
                        else.</small>
                </div>
                <div class="form-group">
                    <label class="font-weight-bold" for="inpPassword">Mật Khẩu</label>
                    <input type="password" class="form-control" id="inpPassword" placeholder="">
                </div>
                <div class="form-group">
                    <label class="font-weight-bold" for="inpNewPassword">Mật Khẩu Mới</label>
                    <input type="password" class="form-control" id="inpNewPassword" placeholder="">
                </div>
                <div class="form-group">
                    <label class="font-weight-bold" for="inpNewPasswordConfirm">Xác Nhận Mật Khẩu Mới</label>
                    <input type="password" class="form-control" id="inpNewPasswordConfirm" placeholder="">
                </div>
                <button type="submit" class="btn btn-primary">Đăng Nhập</button>
                <p><a href="forgot-password.html">Quên mật khẩu?</a></p>
            </form>
        </div>
    </div>
    <!-- End form -->