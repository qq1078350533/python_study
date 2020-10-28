.class Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5$1;->a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5$1;->a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5;

    iget-object p1, p1, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5;->a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->f(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5$1;->a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5;

    iget-object v0, v0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5;->a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->e(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lawyee/wenshuapp/vo/Cls;

    invoke-virtual {p2}, Lcom/lawyee/wenshuapp/vo/Cls;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
