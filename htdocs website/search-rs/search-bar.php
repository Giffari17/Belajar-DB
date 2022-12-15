<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>SBD Kelompok 3</title>
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card mt-4">
                    <div class="card-header">
                        <h4>Tempat Pencarian untuk Inventarisasi Radioisotop pada Rumah Sakit</h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-7">

                                <form action="" method="GET">
                                    <div class="input-group mb-3">
                                        <input type="text" name="search" required value="<?php if(isset($_GET['search'])){echo $_GET['search']; } ?>" class="form-control" placeholder="Cari Radioisotop">
                                        <button type="submit" class="btn btn-primary">Cari</button>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <div class="card mt-4">
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nama Rumah Sakit</th>
                                    <th>Alamat Rumah Sakit</th>
                                    <th>Nomor Telepon Rumah Sakit</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                    $con = mysqli_connect('sql212.byetcluster.com','epiz_33208010','5QwPkEOvLubr','epiz_33208010_db_inventaris');

                                    if(isset($_GET['search']))
                                    {
                                        $filtervalues = $_GET['search'];
                                        $query = "SELECT * FROM rumah_sakit WHERE CONCAT(id_rs,nama_rs,alamat_rs) LIKE '%$filtervalues%' ";
                                        $query_run = mysqli_query($con, $query);

                                        if(mysqli_num_rows($query_run) > 0)
                                        {
                                            foreach($query_run as $items)
                                            {
                                                ?>
                                                <tr>
                                                    <td><?= $items['id_rs']; ?></td>
                                                    <td><?= $items['nama_rs']; ?></td>
                                                    <td><?= $items['alamat_rs']; ?></td>
                                                    <td><?= $items['telp_rs']; ?></td>
                                                </tr>
                                                <?php
                                            }
                                        }
                                        else
                                        {
                                            ?>
                                                <tr>
                                                    <td colspan="4">No Record Found</td>
                                                </tr>
                                            <?php
                                        }
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>