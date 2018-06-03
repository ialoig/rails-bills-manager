module StatisticsHelper
  
  def bills_amount_by_year
    column_chart bills_amount_by_year_charts_path, height: '300px', library: {
      title: {text: 'Amount by month', x: -20},
      yAxis: {
       title: {
         text: 'Amount'
       }
     },
      xAxis: {
        title: {
          text: 'Month'
        }
      }
    }
 end

end