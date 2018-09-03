.class public final Lcom/sunrise/f/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Lcom/sunrise/h/c;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/sunrise/h/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunrise/f/i;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/sunrise/f/i;->b:Lcom/sunrise/h/c;

    invoke-virtual {p2}, Lcom/sunrise/h/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/f/i;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/i;->b:Lcom/sunrise/h/c;

    iget-boolean v0, v0, Lcom/sunrise/h/c;->o:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/i;->c:Ljava/lang/String;

    return-object v0
.end method
