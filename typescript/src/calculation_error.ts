export class CalculationError extends Error {
  private readonly _reason: string;
  constructor(reason: string) {
    super(`Calculation failed. Reason: ${reason}`);
  }
  get reason(): string {
    return this._reason;
  }
}