module DashboardHelper

	def bills_amount_by_year
    column_chart bills_amount_by_year_charts_path, height: '300px', library: {
      yAxis: {
        title: {
          text: 'Amount (€)'
        },
        tickInterval: 20,
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
      yAxis: {
        title: {
          text: 'Amount (€)'
        },
        tickInterval: 20,
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
