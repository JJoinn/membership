<#include "layout/header.ftl"/>
<script src="/assets/js/chart.js"></script>
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>欢迎光临
                    <small>会员管理后台</small>
                </h2>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <#-- FreeMarker Data Example -->
                    <#assign labels = ["January", "February", "March", "April", "May", "June", "July"]>
                    <#assign data = [65, 59, 80, 81, 56, 55, 40]>
                    <canvas id="myChart" width="400" height="200"></canvas>
                    <script>
                        window.onload = function() {
                            var ctx = document.getElementById('myChart').getContext('2d');
                            var myChart = new Chart(ctx, {
                                type: 'line',  // 可以是 'line', 'bar', 'pie', 等等
                                data: {
                                    labels: [<#list labels as label>"${label}"<#if label_has_next>,</#if></#list>],
                                    datasets: [{
                                        label: 'My Dataset',
                                        data: [${data?join(",")}],
                                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                                        borderColor: 'rgba(75, 192, 192, 1)',
                                        borderWidth: 1
                                    }]
                                },
                                options: {
                                    scales: {
                                        y: {
                                            beginAtZero: true
                                        }
                                    }
                                }
                            });
                        }
                    </script>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<#include "layout/footer.ftl"/>