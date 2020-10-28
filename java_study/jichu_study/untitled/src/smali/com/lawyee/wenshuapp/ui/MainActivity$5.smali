.class Lcom/lawyee/wenshuapp/ui/MainActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lawyee/wenshuapp/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/MainActivity;->o()V
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

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$5;->a:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/lawyee/wenshuapp/vo/JaUpdateVO;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lawyee/wenshuapp/vo/JaUpdateVO;

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$5;->a:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-static {p2}, Lcom/lawyee/wenshuapp/ui/MainActivity;->d(Lcom/lawyee/wenshuapp/ui/MainActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/JaUpdateVO;->getSversion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_1

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$5;->a:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/lawyee/wenshuapp/ui/UpdateActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "updata"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$5;->a:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
