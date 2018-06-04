module StatisticsHelper
  
  def bills_amount_by_year
    column_chart bills_amount_by_year_charts_path, height: '300px', library: {
      title: {text: 'Amount by Month', x: -20},
      yAxis: {
        title: {
          text: 'Amount (€)'
        },
        tickInterval: 10
      },

      xAxis: {
        title: {
          text: 'Month'
        },
        crosshair: true
      }
    }
 end

  def bills_amount_by_company
    column_chart bills_amount_by_company_charts_path, height: '300px', library: {
      title: {text: 'Amount by Company', x: -20},
      yAxis: {
       title: {
         text: 'Amount (€)'
       }
     },
      xAxis: {
        title: {
          text: 'Company'
        },
        crosshair: true
      }
    }
  end

end