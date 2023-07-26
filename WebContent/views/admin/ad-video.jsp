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
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="edit-video-tab" data-toggle="tab" href="#editVideo" role="tab"
                        aria-controls="home" aria-selected="true">Chỉnh Sửa Video</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="list-video-tab" data-toggle="tab" href="#listVideo" role="tab"
                        aria-controls="profile" aria-selected="false">Danh Sách Video</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <!-- Chỉnh sửa -->
                <div class="tab-pane fade show active" id="editVideo" role="tabpanel" aria-labelledby="edit-video-tab">
                    <form align="left">
                        <div class="row">
                            <div class="col-md-4">
                                <img src="/luntpc04659_Assignment/views/assets/images/product_01.jpg" alt="">
                                <div class="form-group">
                                    <label for="inpFile">Thêm ảnh</label>
                                    <input type="file" class="form-control-file" id="inpFile">
                                </div>
                            </div>
                            <div class="col-md-8">

                                <div class="form-group">
                                    <label for="inputEmail4">Youtube Id</label>
                                    <input type="text" class="form-control" id="inputEmail4" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword4">Tiêu Đề</label>
                                    <input type="text" class="form-control" id="inputPassword4" placeholder="">
                                </div>

                                <div class="form-group">
                                    <label for="inputAddress">Lượt Xem</label>
                                    <input type="number" class="form-control" id="inputAddress" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="inpMoTa">Mô Tả</label>
                                    <textarea class="form-control" id="inpMoTa" rows="4"></textarea>
                                </div>
                                <div class="form-group">
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="btnActive">
                                        <label class="custom-control-label" for="btnActive">Hoạt động</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary float-right">Lưu</button>
                    </form>
                </div>
                <!-- Danh sách -->
                <div class="tab-pane fade" id="listVideo" role="tabpanel" aria-labelledby="list-video-tab">
                    <div class="card">
                        <div class="card-header">
                            Danh Sách Video
                        </div>
                        <div class="card-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">Youtube Id</th>
                                        <th scope="col">Tiêu Đề</th>
                                        <th scope="col">Lượt xem</th>
                                        <th scope="col">Trạng Thái</th>
                                        <th scope="col">Chỉnh Sửa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Tiêu đề</td>
                                        <td>0</td>
                                        <td>Hoạt động</td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Tiêu đề</td>
                                        <td>0</td>
                                        <td>Hoạt động</td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="card-footer text-muted">
                            <div class="row">
                                <div class="col-sm-5" align="left"><p>Tổng video: 5</p></div>
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