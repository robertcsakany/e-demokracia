export class MaskBuilder {
  constructor(protected props: Array<string | MaskBuilder>) {}

  build(): string {
    const distinctStrings = Array.from(new Set(this.props.filter((p) => typeof p === 'string')));
    const distinctBuilders = Array.from(
      new Set(this.props.filter((p) => p instanceof MaskBuilder).map((p) => (p as MaskBuilder).build())),
    );

    return `{${[...distinctStrings, ...distinctBuilders].join(',')}}`;
  }
}
export class RelationMaskBuilder extends MaskBuilder {
  constructor(protected name: string, protected props: Array<string | RelationMaskBuilder>) {
    super(props);
  }

  build(): string {
    return `${this.name}${super.build()}`;
  }
}
