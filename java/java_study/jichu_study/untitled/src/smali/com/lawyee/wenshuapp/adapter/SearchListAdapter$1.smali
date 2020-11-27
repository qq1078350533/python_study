.class Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;

.field final synthetic val$svo:Lcom/lawyee/wenshuapp/vo/SearchVO;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;Lcom/lawyee/wenshuapp/vo/SearchVO;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$1;->this$0:Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;

    iput-object p2, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$1;->val$svo:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$1;->this$0:Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$1;->val$svo:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-static {p1, v0}, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->access$000(Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    return-void
.end method
