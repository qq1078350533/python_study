.class Lcom/lawyee/wenshuapp/ui/UpdateActivity$1;
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
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/UpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/UpdateActivity$1;->a:Lcom/lawyee/wenshuapp/ui/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/UpdateActivity$1;->a:Lcom/lawyee/wenshuapp/ui/UpdateActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->a(Lcom/lawyee/wenshuapp/ui/UpdateActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/UpdateActivity$1;->a:Lcom/lawyee/wenshuapp/ui/UpdateActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->b(Lcom/lawyee/wenshuapp/ui/UpdateActivity;)V

    return-void
.end method
