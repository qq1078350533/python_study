.class public Lcom/lawyee/wenshuapp/ui/UpdateActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/UpdateActivity;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->a:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private a()V
    .locals 1

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->i()V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->finish()V

    return-void
.end method

.method private a(Lcom/lawyee/wenshuapp/vo/JaUpdateVO;)V
    .locals 10

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x1030073

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0c0038

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090157

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090156

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090159

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09015a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090158

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090051

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    const v8, 0x7f090050

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/JaUpdateVO;->getFilesize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/JaUpdateVO;->getUpdinfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/JaUpdateVO;->getSversion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0e0132

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->a:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/JaUpdateVO;->getUpdtype()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lnet/lawyee/mobilelib/b/b;->a(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    const-string v0, "\u786e\u8ba4"

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/lawyee/wenshuapp/ui/UpdateActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/lawyee/wenshuapp/ui/UpdateActivity$3;-><init>(Lcom/lawyee/wenshuapp/ui/UpdateActivity;Lcom/lawyee/wenshuapp/vo/JaUpdateVO;)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0e003b

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(I)V

    new-instance v0, Lcom/lawyee/wenshuapp/ui/UpdateActivity$1;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/ui/UpdateActivity$1;-><init>(Lcom/lawyee/wenshuapp/ui/UpdateActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0134

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(I)V

    new-instance v0, Lcom/lawyee/wenshuapp/ui/UpdateActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/lawyee/wenshuapp/ui/UpdateActivity$2;-><init>(Lcom/lawyee/wenshuapp/ui/UpdateActivity;Lcom/lawyee/wenshuapp/vo/JaUpdateVO;)V

    :goto_0
    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method static synthetic b(Lcom/lawyee/wenshuapp/ui/UpdateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "updata"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/lawyee/wenshuapp/vo/JaUpdateVO;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->finish()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/lawyee/wenshuapp/ui/UpdateActivity;->a(Lcom/lawyee/wenshuapp/vo/JaUpdateVO;)V

    return-void
.end method
