.class Lnet/lawyee/mobilelib/filedownloader/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/lawyee/mobilelib/filedownloader/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/lawyee/mobilelib/filedownloader/b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/lawyee/mobilelib/filedownloader/b;


# direct methods
.method constructor <init>(Lnet/lawyee/mobilelib/filedownloader/b;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/b$1;->a:Lnet/lawyee/mobilelib/filedownloader/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/b$1;->a:Lnet/lawyee/mobilelib/filedownloader/b;

    invoke-static {v0}, Lnet/lawyee/mobilelib/filedownloader/b;->a(Lnet/lawyee/mobilelib/filedownloader/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lnet/lawyee/mobilelib/filedownloader/b$1;->a:Lnet/lawyee/mobilelib/filedownloader/b;

    invoke-static {v2}, Lnet/lawyee/mobilelib/filedownloader/b;->a(Lnet/lawyee/mobilelib/filedownloader/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-virtual {v2}, Lnet/lawyee/mobilelib/filedownloader/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/b$1;->a:Lnet/lawyee/mobilelib/filedownloader/b;

    invoke-static {p1}, Lnet/lawyee/mobilelib/filedownloader/b;->a(Lnet/lawyee/mobilelib/filedownloader/b;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
