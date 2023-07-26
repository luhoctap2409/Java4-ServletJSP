<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- Page Content -->
    <!-- Banner Starts Here -->
    <div class="banner header-text">
        <div class="owl-banner owl-carousel">
            <div class="banner-item-01">
                <div class="text-content">
                    <h4>Welcome</h4>
                    <h2>OE Administration</h2>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner Ends Here -->

    <div class="banner">
        <div class="container">
            <h2>THỐNG<em> KÊ</em></h2>
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="edit-video-tab" data-toggle="tab" href="#editVideo" role="tab"
                        aria-controls="home" aria-selected="true">Lượt Thích Từng Video</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="list-video-tab" data-toggle="tab" href="#listVideo" role="tab"
                        aria-controls="profile" aria-selected="false">Người Dùng Thích Video</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="thong-ke-tab" data-toggle="tab" href="#thongKeChiaSe" role="tab"
                        aria-controls="profile" aria-selected="false">Lượt Chia Sẻ</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <!-- Người dùng thích từng video -->
                <div class="tab-pane fade show active" id="editVideo" role="tabpanel" aria-labelledby="edit-video-tab">
                    <div class="card">
                        <div class="card-header">
                            Lượt Thích Từng Video
                        </div>
                        <div class="card-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">Tiêu Đề</th>
                                        <th scope="col">Lượt Yêu Thích</th>
                                        <th scope="col">Ngày Cũ Nhất</th>
                                        <th scope="col">Ngày Mới Nhất</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Tiêu đề</td>
                                        <td>0</td>
                                        <td>12/03/2023</td>
                                        <td>12/06/2023</td>
                                    </tr>
                                    <tr>
                                        <td>Tiêu đề</td>
                                        <td>0</td>
                                        <td>12/03/2023</td>
                                        <td>12/06/2023</td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                        <div class="card-footer text-muted">
                            <div class="row">
                                <div class="col-sm-5" align="left">
                                    <p>Tổng video: 5</p>
                                </div>
                                <div class="col-sm-7" align="right">
                                    <button class="btn btn-primary"><i class="fa fa-angles-left"></i></button>
                                    <button class="btn btn-primary"><i class="fa fa-angle-left"></i></button>
                                    <button class="btn btn-primary"><i class="fa fa-angle-right"></i></button>
                                    <button class="btn btn-primary"><i class="fa fa-angles-right"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Lọc người thích từng video -->
                <div class="tab-pane fade" id="listVideo" role="tabpanel" aria-labelledby="list-video-tab">
                    <div class="card">
                        <div class="card-header">
                            Người Dùng Thích Video
                        </div>
                        <div class="card-body">
                            <form>
                                <div class="form-group row">
                                    <div class="col-sm-2">
                                        <label class="col-form-label" for="inpSelect">Tiêu Đề</label>
                                    </div>
                                    <div class="col-sm-10">
                                        <select class="form-control" id="inpSelect">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">Tên Đăng Nhập</th>
                                        <th scope="col">Họ Tên</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Ngày Thích</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">lunt</th>
                                        <td>Nguyễn A</td>
                                        <td>lunt@gmail.com</td>
                                        <td>12/07/2023</td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">lunt</th>
                                        <td>Nguyễn A</td>
                                        <td>lunt@gmail.com</td>
                                        <td>12/07/2023</td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a></td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                        <div class="card-footer text-muted">
                            <div class="row">
                                <div class="col-sm-5" align="left">
                                    <p>Tổng video: 5</p>
                                </div>
                                <div class="col-sm-7" align="right">
                                    <button class="btn btn-primary"><i class="fa fa-angles-left"></i></button>
                                    <button class="btn btn-primary"><i class="fa fa-angle-left"></i></button>
                                    <button class="btn btn-primary"><i class="fa fa-angle-right"></i></button>
                                    <button class="btn btn-primary"><i class="fa fa-angles-right"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="thongKeChiaSe" role="tabpanel" aria-labelledby="thong-ke-tab">
                    <div class="card">
                        <div class="card-header">
                            Lượt Chia Sẻ
                        </div>
                        <div class="card-body">
                            <form>
                                <div class="form-group row">
                                    <div class="col-sm-2">
                                        <label class="col-form-label" for="inpSelect">Tiêu Đề</label>
                                    </div>
                                    <div class="col-sm-10">
                                        <select class="form-control" id="inpSelect">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">Họ Tên</th>
                                        <th scope="col">Email Gửi</th>
                                        <th scope="col">Email Nhận</th>
                                        <th scope="col">Ngày Gửi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">Nguyễn A</th>
                                        <td>lunt@gmail.com</td>
                                        <td>lunguyen@gmail.com</td>
                                        <td>12/07/2023</td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Nguyễn A</th>
                                        <td>lunt@gmail.com</td>
                                        <td>lunguyen@gmail.com</td>
                                        <td>12/07/2023</td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="card-footer text-muted">
                            <div class="row">
                                <div class="col-sm-5" align="left">
                                    <p>Tổng video: 5</p>
                                </div>
                                <div class="col-sm-7" align="right">
                                    <button class="btn btn-primary"><i class="fa fa-angles-left"></i></button>
                                    <button class="btn btn-primary"><i class="fa fa-angle-left"></i></button>
                                    <button class="btn btn-primary"><i class="fa fa-angle-right"></i></button>
                                    <button class="btn btn-primary"><i class="fa fa-angles-right"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
