module DashboardHelper

	def bills_amount_by_year(last_month)
    column_chart bills_amount_by_year_charts_path(last_month: last_month), basic_opts("Amount (€)")
  end

  def bills_amount_by_company(last_month)
    column_chart bills_amount_by_company_charts_path(last_month: last_month), basic_opts("Amount (€)")
  end


  def basic_opts(title_y) {
    height: '300px',
    id: SecureRandom.hex(7),
    library: {
      yAxis: {
        title: {
          text: title_y
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
