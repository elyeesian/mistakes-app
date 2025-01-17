import $ from 'jquery'
import DataTable from 'datatables.net'
window.DataTable = DataTable

$(document).on('turbo:load', function() {
    $('#users_table').dataTable({
        processing: true,
        responsive: true,
        serverSide: true,
        paging: false,
        dom: 'lftrip',
        columns: [
            {
                width: '10%',
                orderable: false
            },
            {
                width: '10%',
                orderable: false
            },
            {
                width: '10%',
                orderable: false
            },
            {
                width: '10%',
                orderable: false
            },
            {
                width: '10%',
                orderable: false
            }
        ],
        ajax: {
            url: $('#users_table').data('source'),
            data: function(data) {
                return $.extend( {}, data, {
                });
            }
        }
    });

    // mistake datatable
    $('#mistakes_table').dataTable({
        processing: true,
        responsive: true,
        serverSide: true,
        paging: false,
        dom: 'lftrip',
        columns: [
            {
                width: '10%',
                orderable: false
            },
            {
                width: '10%',
                orderable: false
            },
            {
                width: '10%',
                orderable: false
            },
            {
                width: '10%',
                orderable: false
            },
            {
                width: '10%',
                orderable: false
            }
        ],
        ajax: {
            url: $('#mistakes_table').data('source'),
            data: function(data) {
                return $.extend( {}, data, {
                });
            }
        }  
    });

    //  user_mistakes datatable
    $('#user_mistakes_table').dataTable({
        processing: true,
        responsive: true,
        serverSide: true,
        paging: false,
        dom: 'lftrip',
        columns: [
            {
                width: '10%',
                orderable: false
            },
            {
                width: '10%',
                orderable: false
            },
            {
                width: '10%',
                orderable: false
            },
            {
                width: '10%',
                orderable: false
            }
        ],
        ajax: {
            url: $('#user_mistakes_table').data('source'),
            data: function(data) {
                return $.extend( {}, data, {
                });
            }
        }
    });
});














