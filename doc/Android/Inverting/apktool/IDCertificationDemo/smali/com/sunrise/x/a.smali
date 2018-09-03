.class public Lcom/sunrise/x/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/s/c;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunrise/x/a;->a:Ljava/lang/String;

    const-string v0, ","

    invoke-static {p2, v0}, Lcom/sunrise/p/c;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/x/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/x/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/x/a;->b:Ljava/lang/String;

    return-object v0
.end method
