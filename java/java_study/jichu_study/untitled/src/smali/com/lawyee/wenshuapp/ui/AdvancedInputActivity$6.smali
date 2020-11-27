.class Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bigkoo/pickerview/TimePickerView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->a(Landroid/content/Context;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$6;->b:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;

    iput-object p2, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$6;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Date;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$6;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
