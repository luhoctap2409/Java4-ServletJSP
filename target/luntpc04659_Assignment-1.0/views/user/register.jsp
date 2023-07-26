<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Start form -->
    <div class="banner">
        <div class="container form-login shadow p-3 mb-5 bg-white rounded">
            <h3>ĐĂNG <em >KÝ</em></h3>
            <form>
                <div class="form-group">
                    <label class="font-weight-bold" for="inpAccount">Tên Đăng Nhập</label>
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
                    <label class="font-weight-bold" for="inpPasswordConfirm">Xác Nhận Mật Khẩu</label>
                    <input type="password" class="form-control" id="inpPasswordConfirm" placeholder="">
                </div>
                <div class="form-group">
                    <label class="font-weight-bold" for="inpEmail">Email</label>
                    <input type="email" class="form-control" id="inpEmail" placeholder="">
                </div>
                <div class="form-group">
                    <label class="font-weight-bold" for="inpFullname">Họ Tên</label>
                    <input type="number" class="form-control" id="inpFullname" placeholder="">
                </div>
                <button type="submit" class="btn btn-primary">Đăng Ký</button>
                <p>Bạn đã có tài khoản? <a class="noAccount" href="login.html">Đăng nhập</a></p>
                
            </form>
        </div>
    </div>
    <!-- End form -->