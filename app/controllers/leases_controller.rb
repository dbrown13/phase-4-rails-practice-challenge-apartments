class LeasesController < ApplicationController
    
    def index
        leases = Lease.all
        render json: leases
    end

    def create
        lease = Lease.create(leases_params)
        render json: lease
    end

    def destroy
        lease = Lease.find_by(id: params[:id])
        lease.destroy
        head :no_content
    end

    private

    def leases_params
        params.permit(:rent, :apartment_id, :tenant_id)
    end

end
