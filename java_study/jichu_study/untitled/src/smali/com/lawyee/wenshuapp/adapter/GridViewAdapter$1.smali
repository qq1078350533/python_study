.class Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;->onBindViewHolder(Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$1;->this$0:Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;

    iput p2, p0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$1;->this$0:Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;->access$000(Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;)Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$OnRecyclerItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$1;->this$0:Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;->access$000(Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;)Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$OnRecyclerItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$1;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$OnRecyclerItemClickListener;->OnItemClickListener(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
