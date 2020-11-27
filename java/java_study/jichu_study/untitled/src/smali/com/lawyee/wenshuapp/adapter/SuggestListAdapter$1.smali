.class Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

.field final synthetic val$position:I

.field final synthetic val$svo:Lcom/lawyee/wenshuapp/vo/SuggestVO;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;ILcom/lawyee/wenshuapp/vo/SuggestVO;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$1;->this$0:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    iput p2, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$1;->val$svo:Lcom/lawyee/wenshuapp/vo/SuggestVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$1;->this$0:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->access$000(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;)Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$OnRecyclerItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$1;->this$0:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->access$000(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;)Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$OnRecyclerItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$1;->val$position:I

    iget-object v2, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$1;->val$svo:Lcom/lawyee/wenshuapp/vo/SuggestVO;

    invoke-interface {v0, p1, v1, v2}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$OnRecyclerItemClickListener;->OnItemClickListener(Landroid/view/View;ILcom/lawyee/wenshuapp/vo/SuggestVO;)V

    :cond_0
    return-void
.end method
