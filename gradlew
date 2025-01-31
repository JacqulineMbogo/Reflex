package pfarmnet.pf.lg_sfa.stocks;


import android.content.Context;
import android.graphics.Color;
import android.support.annotation.NonNull;
import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.util.ArrayList;

import pfarmnet.pf.lg_sfa.R;

public class Adapter_StockViewLines extends RecyclerView.Adapter<Adapter_StockViewLines.ViewsHolder>
{
    private ArrayList<A_StockView> stockViews;

    public Adapter_StockViewLines(ArrayList<A_StockView> stockViews) {
        this.stockViews =   stockViews;
    }

    @NonNull
    @Override
    public ViewsHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int position) {
        return new ViewsHolder(((LayoutInflater)viewGroup.getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(R.layout.custom_stock_request_view, viewGroup, false));
    }

    @Override
    public void onBindViewHolder(@NonNull ViewsHolder viewsHolder, int position) {
        viewsHolder.setIsRecyclable(false);
        viewsHolder.name.setText(stockViews.get(position).getName());
        viewsHolder.qty.setText(stockViews.get(position).getQty());
        viewsHolder.pre_qty.setText(stockViews.get(position).getProvided());

        if(position==0)
        {
            viewsHolder.name.setTextSize(12);
            viewsHolder.qty.setTextSize(12);
            viewsHolder.pre_qty.setTextSize(12);
            viewsHolder.name.setEnabled(false);
            viewsHolder.qty.setEnabled(false);
            viewsHolder.pre_qty.setEnabled(false);
            viewsHolder.name.setTextColor(Color.WHITE);
            viewsHolder.qty.setTextColor(Color.WHITE);
            viewsHolder.pre_qty.setTextColor(Color.WHITE);

            viewsHolder.cardView.setLayoutParams(new CardView.LayoutParams(CardView.LayoutParams.MATCH_PARENT, 70));
            viewsHolder.cardView.setCardBackgroundColor(Color.parseColor("#2E4053"));
            viewsHolder.cardView.setCardElevation(50);
        }
    }

    @Override
    public int getItemCount() {
        return stockViews.size();
    }

    public class ViewsHolder extends RecyclerView.ViewHolder
    {
        TextView name, qty, pre_qty;

        CardView cardView;

        public ViewsHolder(@NonNull View views)
        {
            super(views);

            name    =   views.findViewById(R.id.textView5);
            qty     =   views.findViewById(R.id.textView6);
            pre_qty =   views.findViewById(R.id.textView7);

            cardView=   views.findViewById(R.id.sales_lines_card);
        }
    }
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                