.class Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;

.field final synthetic val$wenshuid:Ljava/lang/String;

.field final synthetic val$wenshuwslvo:Lcom/lawyee/wenshuapp/vo/WenShuListVO;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;Ljava/lang/String;Lcom/lawyee/wenshuapp/vo/WenShuListVO;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$1;->this$0:Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;

    iput-object p2, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$1;->val$wenshuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$1;->val$wenshuwslvo:Lcom/lawyee/wenshuapp/vo/WenShuListVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$1;->this$0:Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->access$000(Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "docid"

    iget-object v1, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$1;->val$wenshuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "keyword"

    iget-object v1, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$1;->this$0:Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;

    invoke-static {v1}, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->access$100(Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "caseName"

    iget-object v1, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$1;->val$wenshuwslvo:Lcom/lawyee/wenshuapp/vo/WenShuListVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getCasename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "time"

    iget-object v1, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$1;->val$wenshuwslvo:Lcom/lawyee/wenshuapp/vo/WenShuListVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getJudgmentdate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lawyee/mobilelib/b/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$1;->this$0:Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->access$000(Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
