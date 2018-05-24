class Database
    def transaction
       start_transaction
       begin
            yield
       rescue DBError => e
        rollback_transaction
        log_error e.message
        return
       end
       commit_transaction
    end
end

DB= Database.new
DB.transaction do
    #update multiple records
end