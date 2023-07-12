<div class="">
    <div class="page-title" style="padding: 8px">
        <div class="title_left">
            <h1><i class="fa fa-book"></i>  Laporan</h1>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">

                <!-- Card untuk Filter bulan dan tahun -->
                <center >
                    <div class="card" style="background:#eee;width: 50%;padding: 20px;border-radius: 10px;color:black;margin: 30px 0;">
                        <form class="card-body d-flex filter-form" method="get">
                            <span class="h3">

                                <!-- Filter Bulan -->
                                <select class="filter-month"  name="month" style="width:20%;border-radius:10px">
                                    <?php if(isset($_GET['month'])): ?>
                                    <option <?= $_GET['month'] == 1 ? 'selected': '' ?> value="1">Januari</option>
                                    <option <?= $_GET['month'] == 2 ? 'selected': '' ?> value="2">Februari</option>
                                    <option <?= $_GET['month'] == 3 ? 'selected': '' ?> value="3">Maret</option>
                                    <option <?= $_GET['month'] == 4 ? 'selected': '' ?> value="4">April</option>
                                    <option <?= $_GET['month'] == 5 ? 'selected': '' ?> value="5">Mei</option>
                                    <option <?= $_GET['month'] == 6 ? 'selected': '' ?> value="6">Juni</option>
                                    <option <?= $_GET['month'] == 7 ? 'selected': '' ?> value="7">Juli</option>
                                    <option <?= $_GET['month'] == 8 ? 'selected': '' ?> value="8">Agustus</option>
                                    <option <?= $_GET['month'] == 9 ? 'selected': '' ?> value="9">September</option>
                                    <option <?= $_GET['month'] == 10 ? 'selected': '' ?> value="10">Oktober</option>
                                    <option <?= $_GET['month'] == 11 ? 'selected': '' ?> value="11">November</option>
                                    <option <?= $_GET['month'] == 12 ? 'selected': '' ?> value="12">Desember</option>
                                    <?php else: ?>
                                    <option <?= (date('n') == 1 ? 'selected' : '') ?> value="1">Januari</option>
                                    <option <?= (date('n') == 2 ? 'selected' : '') ?> value="2">Februari</option>
                                    <option <?= (date('n') == 3 ? 'selected' : '') ?> value="3">Maret</option>
                                    <option <?= (date('n') == 4 ? 'selected' : '') ?> value="4">April</option>
                                    <option <?= (date('n') == 5 ? 'selected' : '') ?> value="5">Mei</option>
                                    <option <?= (date('n') == 6 ? 'selected' : '') ?> value="6">Juni</option>
                                    <option <?= (date('n') == 7 ? 'selected' : '') ?> value="7">Juli</option>
                                    <option <?= (date('n') == 8 ? 'selected' : '') ?> value="8">Agustus</option>
                                    <option <?= (date('n') == 9 ? 'selected' : '') ?> value="9">September</option>
                                    <option <?= (date('n') == 10 ? 'selected' : '') ?> value="10">Oktober</option>
                                    <option <?= (date('n') == 11 ? 'selected' : '') ?> value="11">November</option>
                                    <option <?= (date('n') == 12 ? 'selected' : '') ?> value="12">Desember</option>
                                    <?php endif ?>
                                </select>
                            </span>
                            <span class="h3"> / </span>
                            <span class="h3">

                                <!-- Filter Tahun -->
                                <select class="filter-year"  name="year" style="width:20%;border-radius:10px">
                                    <?php if(isset($_GET['year'])): ?>
                                    <option <?= $_GET['year'] == 2014 ? 'selected': '' ?> value="2014">2014</option>
                                    <option <?= $_GET['year'] == 2015 ? 'selected': '' ?> value="2015">2015</option>
                                    <option <?= $_GET['year'] == 2016 ? 'selected': '' ?> value="2016">2016</option>
                                    <option <?= $_GET['year'] == 2017 ? 'selected': '' ?> value="2017">2017</option>
                                    <option <?= $_GET['year'] == 2018 ? 'selected': '' ?> value="2018">2018</option>
                                    <option <?= $_GET['year'] == 2019 ? 'selected': '' ?> value="2019">2019</option>
                                    <option <?= $_GET['year'] == 2020 ? 'selected': '' ?> value="2020">2020</option>
                                    <option <?= $_GET['year'] == 2021 ? 'selected': '' ?> value="2021">2021</option>
                                    <option <?= $_GET['year'] == 2022 ? 'selected': '' ?> value="2022">2022</option>
                                    <option <?= $_GET['year'] == 2023 ? 'selected': '' ?> value="2023">2023</option>
                                    <?php else: ?>
                                    <option value="2014">2014</option>
                                    <option value="2015">2015</option>
                                    <option value="2016">2016</option>
                                    <option value="2017">2017</option>
                                    <option value="2018">2018</option>
                                    <option value="2019">2019</option>
                                    <option value="2020">2020</option>
                                    <option value="2021">2021</option>
                                    <option value="2022">2022</option>
                                    <option selected value="2023">2023</option>
                                    <?php endif ?>
                                </select>
                            </span>
                        </form>
                    </div>
                </center>

                <!-- Card untuk menampilkan grafik -->
                <div class="row">

                    <!-- card siswa -->
                    <div class="col-sm-6" id="siswaCard">
                        <center >
                            <div class="card" style="min-height:700px;background:#eee;padding: 20px;border-radius: 10px;color:black;margin: 30px 0;">
                                <div class="card-body d-flex">
                                    <div class="h4">5 siswa yang paling sering meminjam buku dalam sebulan</div>
                                    <br>
                                    <div class="h4 text-left" style="margin-left:50px">
                                        <!-- table data siswa -->
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <td>No.</td>
                                                    <td>Nama</td>
                                                    <td>Kelas</td>
                                                    <td>Jumlah</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php foreach($siswa as $key => $val): ?>
                                                    <tr>
                                                        <td><?= $key+1 ?></td>
                                                        <td><?= $val['full_name'] ?></td>
                                                        <td><?= $val['kelas'] ?></td>
                                                        <td><?= $val['count'] ?></td>
                                                    </tr>
                                                <?php endforeach ?>
                                            </tbody>
                                        </table>
                                    </div>
                                    <br>

                                    <!-- grafik data siswa -->
                                    <p class="h3">Grafik Siswa</p><br>
                                    <canvas style="border-radius: 6px;" id="siswaChart"></canvas>
                                    <br>
                                    <button class="btn btn-dark" style="margin-top: 20px;" id="downloadPdfSiswa">Download Laporan</button>
                                </div>
                            </div>
                        </center>
                    </div>

                    <!-- card siswa -->
                    <div class="col-sm-6" id="bukuCard">
                        <center >
                            <div class="card" style="min-height:700px;background:#eee;padding: 20px;border-radius: 10px;color:black;margin: 30px 0;">
                                <div class="card-body d-flex">
                                    <div class="h4">5 buku yang paling banyak dipinjam dalam sebulan</div>
                                    <br>
                                    <div class="h4 text-left" style="margin-left:50px">
                                        <!-- table data siswa -->
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <td>No.</td>
                                                    <td>Judul</td>
                                                    <td>Jumlah</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php foreach($buku as $key => $val): ?>
                                                    <tr>
                                                        <td><?= $key+1 ?></td>
                                                        <td><?= $val['title'] ?></td>
                                                        <td><?= $val['count'] ?></td>
                                                    </tr>
                                                <?php endforeach ?>
                                            </tbody>
                                        </table>
                                    </div>
                                    <br>

                                    <!-- grafik data siswa -->
                                    <p class="h3">Grafik Buku</p><br>
                                    <canvas style="border-radius: 6px;" id="bukuChart"></canvas>
                                    <br>
                                    <button class="btn btn-dark" style="margin-top: 20px;" id="downloadPdfBuku">Download Laporan</button>
                                </div>
                            </div>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Script untuk mengambil library grafik -->
<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.4.0/jspdf.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/rasterizehtml/1.3.0/rasterizeHTML.allinone.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
<script>

    // fungsi untuk melakukan reload jika mengubah dropdown bulan/tahun
    $(".filter-month, .filter-year").change(function(){
        $(".filter-form").submit()
    })

    // fungsi untuk membuat grafik siswa
function getSiswa() {
  Chart.defaults.global.defaultFontSize = 16;

  var siswaCounts = [
    <?php foreach($siswa as $val): ?>
      <?= $val['count'] ?>,
    <?php endforeach ?>
  ];
  var totalSiswa = siswaCounts.reduce((a, b) => a + b, 0);

  var myBarChart = new Chart(document.getElementById("siswaChart").getContext('2d'), {
    type: 'pie',
    data: {
      labels: [
        <?php foreach($siswa as $val): ?>
          "<?= $val['full_name'] ?>",
        <?php endforeach ?>
      ],
      datasets: [{
        fill: true,
        backgroundColor: ['#ff6', '#f6f', '#6ff', '#66f', '#f66'],
        data: siswaCounts,
      }, ]
    },
    options: {
      responsive: true,
      legend: {
        position: 'right',
        labels: {
          fontColor: "black",
          boxWidth: 20,
          padding: 20
        }
      },
      tooltips: {
        callbacks: {
          label: function (tooltipItem, data) {
            var dataset = data.datasets[tooltipItem.datasetIndex];
            var total = dataset.data.reduce((previousValue, currentValue) => previousValue + currentValue);
            var currentValue = dataset.data[tooltipItem.index];
            var percentage = Math.floor(((currentValue / total) * 100) + 0.5);
            return currentValue + " (" + percentage + "%)";
          }
        }
      }
    }
  });

  // Menampilkan total jumlah siswa di grafik
  var ctx = document.getElementById("siswaChart").getContext('2d');
  ctx.font = "20px Arial";
  ctx.fillStyle = "#000";
  ctx.textAlign = "center";
  ctx.fillText("Total: " + totalSiswa, 120, 120);
}

// memanggil fungsi untuk membuat grafik siswa
getSiswa()

// fungsi untuk membuat grafik buku
function getBuku() {
  Chart.defaults.global.defaultFontSize = 16;

  var bukuCounts = [
    <?php foreach($buku as $val): ?>
      <?= $val['count'] ?>,
    <?php endforeach ?>
  ];
  var totalBuku = bukuCounts.reduce((a, b) => a + b, 0);

  var myBarChart = new Chart(document.getElementById("bukuChart").getContext('2d'), {
    type: 'pie',
    data: {
      labels: [
        <?php foreach($buku as $val): ?>
          "<?= $val['title'] ?>",
        <?php endforeach ?>
      ],
      datasets: [{
        fill: true,
        backgroundColor: ['#ff6', '#f6f', '#6ff', '#66f', '#f66'],
        data: bukuCounts,
      }, ]
    },
    options: {
      responsive: true,
      legend: {
        position: 'right',
        labels: {
          fontColor: "black",
          boxWidth: 20,
          padding: 20
        }
      },
      tooltips: {
        callbacks: {
          label: function (tooltipItem, data) {
            var dataset = data.datasets[tooltipItem.datasetIndex];
            var total = dataset.data.reduce((previousValue, currentValue) => previousValue + currentValue);
            var currentValue = dataset.data[tooltipItem.index];
            var percentage = Math.floor(((currentValue / total) * 100) + 0.5);
            return currentValue + " (" + percentage + "%)";
          }
        }
      }
    }
  });

  // Menampilkan total jumlah buku di grafik
  var ctx = document.getElementById("bukuChart").getContext('2d');
  ctx.font = "20px Arial";
  ctx.fillStyle = "#000";
  ctx.textAlign = "center";
  ctx.fillText("Total: " + totalBuku, 120, 120);
}

// memanggil fungsi untuk membuat grafik buku
getBuku()


    // fungsi ketika klik tombol download buku
    $('#downloadPdfBuku').click(function(event) {
        url = window.location.href.split('?')
        window.open(url[0]+'?download=buku&'+(url[1] ? url[1] : ''), '_blank');
    })

    // fungsi ketika klik tombol download siswa
    $('#downloadPdfSiswa').click(function(event) {
        url = window.location.href.split('?')
        window.open(url[0]+'?download=siswa&'+(url[1] ? url[1] : ''), '_blank');
    });


</script>

