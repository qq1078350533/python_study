.class Lcom/lawyee/wenshuapp/ui/UpdateActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/UpdateActivity;->a(Lcom/lawyee/wenshuapp/vo/JaUpdateVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/vo/JaUpdateVO;

.field final synthetic b:Lcom/lawyee/wenshuapp/ui/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/UpdateActivity;Lcom/lawyee/wenshuapp/vo/JaUpdateVO;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/UpdateActivity$3;->b:Lcom/lawyee/wenshuapp/ui/UpdateActivity;

    iput-object p2, p0, Lcom/lawyee/wenshuapp/ui/UpdateActivity$3;->a:Lcom/lawyee/wenshuapp/vo/JaUpdateVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/UpdateActivity$3;->a:Lcom/lawyee/wenshuapp/vo/JaUpdateVO;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/JaUpdateVO;->getFileurl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/UpdateActivity$3;->b:Lcom/lawyee/wenshuapp/ui/UpdateActivity;

    invoke-virtual {v0, p1}, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/UpdateActivity$3;->b:Lcom/lawyee/wenshuapp/ui/UpdateActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->a(Lcom/lawyee/wenshuapp/ui/UpdateActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/UpdateActivity$3;->b:Lcom/lawyee/wenshuapp/ui/UpdateActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->b(Lcom/lawyee/wenshuapp/ui/UpdateActivity;)V

    return-void
.end method
