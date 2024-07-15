import {Controller} from '@hotwired/stimulus'

export default class extends Controller {
    connect() {
        $(document).ready(function () {
            const fuel_consumption_car = $("#fuel_consumption_car");
            const fuel_consumption_liters = $("#fuel_consumption_liters");
            const fuel_consumption_price = $("#fuel_consumption_price");
            const fuel_consumption_refuel_date = $("#fuel_consumption_refuel_date");
            const fuel_consumption_distance = $("#fuel_consumption_distance");
            const fuel_consumption_avg_consumption = $("#fuel_consumption_avg_consumption");
        });
    }
}
