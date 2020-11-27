.class Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->p()V
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

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$1;->a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$1;->a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->a(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$1;->a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;

    invoke-static {v1}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->b(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->a(Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method
