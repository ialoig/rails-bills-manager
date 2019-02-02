module DashboardHelper

	def bills_amount_by_year
    column_chart bills_amount_by_year_charts_path, height: '300px', library: {
      yAxis: {
        title: {
          text: 'Amount (€)'
        },
        tickInterval: 10,
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
        tickInterval: 10,
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


  def amount_by_company_last_six
    logger.debug 'helper method'
    column_chart amount_by_company_last_six_charts_path, height: '300px', library: {
      yAxis: {
        title: {
          text: 'Amount (€)'
        },
        tickInterval: 10,
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

  def total_bills
    @bill.count
  end

  def bills_total_amount_by_companies
    pie_chart bills_total_amount_by_companies_charts_path, 
      messages: {
        empty: "Insert your first bill to view chart"
      }
  end
  
end
