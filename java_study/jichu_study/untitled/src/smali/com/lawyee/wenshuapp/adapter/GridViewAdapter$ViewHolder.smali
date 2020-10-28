.class public Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field rlContent:Landroid/widget/RelativeLayout;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;


# direct methods
.method public constructor <init>(Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$ViewHolder;->this$0:Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    const p1, 0x7f09013c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const p1, 0x7f0900fc

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$ViewHolder;->rlContent:Landroid/widget/RelativeLayout;

    return-void
.end method
