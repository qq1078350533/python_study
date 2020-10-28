.class Lcom/lawyee/wenshuapp/ui/MainActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$OnRecyclerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$7;->a:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClickListener(Landroid/view/View;I)V
    .locals 2

    const/4 p1, 0x7

    if-ge p2, p1, :cond_0

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f()Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object p1

    const-string v0, "\u6848\u4ef6\u7c7b\u578b"

    invoke-static {p1, v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->findSearchVOCopyWithKey(Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object p1

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->g()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$7;->a:Lcom/lawyee/wenshuapp/ui/MainActivity;

    iget-object v1, v1, Lcom/lawyee/wenshuapp/ui/MainActivity;->k:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-static {v0, p2}, Lcom/lawyee/wenshuapp/vo/Cls;->getAJLXStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$7;->a:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-static {p2, p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Lcom/lawyee/wenshuapp/ui/MainActivity;Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    :cond_0
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$7;->a:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->f(Lcom/lawyee/wenshuapp/ui/MainActivity;)Lcom/lawyee/wenshuapp/widget/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$7;->a:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->f(Lcom/lawyee/wenshuapp/ui/MainActivity;)Lcom/lawyee/wenshuapp/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/widget/a;->d()Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method
