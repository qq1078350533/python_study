.class Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5;->a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance p1, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5$1;

    invoke-direct {p1, p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5$1;-><init>(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5;->a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->e(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5;->a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;

    invoke-static {v1}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->e(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lawyee/wenshuapp/vo/Cls;

    invoke-virtual {v3}, Lcom/lawyee/wenshuapp/vo/Cls;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5;->a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, p1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
