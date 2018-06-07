module StatisticsHelper
  
  def bills_amount_by_year
    column_chart bills_amount_by_year_charts_path, height: '300px', library: {
      title: {text: 'Amount by Month', x: -20},
      yAxis: {
        title: {
          text: 'Amount (€)'
        },
        tickInterval: 50,
        labels: {
            format: '{value} €'
        }
      },
      xAxis: {
        crosshair: true
      },
      tooltip: {
        pointFormat: '{series.name}: <b>{point.y}</b><br/>',
        valueSuffix: ' €',
      },
    }
 end

  def bills_amount_by_company
    column_chart bills_amount_by_company_charts_path, height: '300px', library: {
      title: {text: 'Amount by Company', x: -20},
      yAxis: {
        title: {
          text: 'Amount (€)'
        },
        tickInterval: 50,
        labels: {
            format: '{value} €'
        }
      },
      xAxis: {
        crosshair: true,
      },
      tooltip: { 
        pointFormat: '{series.name}: <b>{point.y}</b><br/>',
        valueSuffix: ' €',
      },
    }
  end

end